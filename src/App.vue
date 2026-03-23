<script setup>
import { onMounted } from 'vue';

onMounted(() => {
  import('./game/englishTown.js');
});
</script>

<template>
  <main class="app-shell">
    <section class="game-screen">
      <header class="top-hud">
        <div class="profile-card">
          <button class="top-icon top-menu" type="button" aria-label="Menu">
            <span></span>
            <span></span>
            <span></span>
          </button>

          <div class="avatar-medallion">
            <span class="avatar-core" aria-hidden="true"></span>
          </div>
          <div class="profile-badge" aria-label="40 stars, level 4">
            <span class="profile-star"><span>40</span></span>
            <span class="profile-level">Lv.4</span>
          </div>
        </div>

        <div class="resource-ribbon">
          <div class="resource-pill">
            <span class="resource-icon coin"></span>
            <div class="resource-copy">
              <span>Coins</span>
              <strong data-role="coin-count">0</strong>
            </div>
          </div>
          <div class="resource-pill">
            <span class="resource-icon gem"></span>
            <div class="resource-copy">
              <span>Tiles</span>
              <strong data-role="premium-currency-count">0</strong>
            </div>
          </div>
        </div>
      </header>

      <p class="status-bubble" data-role="status">Loading board...</p>

      <button
        class="attribute-hud"
        data-role="attribute-info-trigger"
        type="button"
        aria-expanded="false"
        aria-label="Open attribute bonus details"
      >
        <span class="attribute-heart" aria-hidden="true"></span>
        <div class="attribute-meter" aria-label="Attribute bonus progress 648 out of 700">
          <span class="attribute-meter-fill" style="width: 92.57%"></span>
          <strong class="attribute-meter-value">648</strong>
        </div>
        <span class="attribute-info-trigger" aria-hidden="true">
          i
        </span>
      </button>

      <aside class="right-rail">
        <button class="action-orb orange" type="button" aria-label="Daily rewards">
          <span class="orb-glyph">G</span>
          <span class="orb-label">Gift</span>
        </button>
        <button class="action-orb blue" type="button" aria-label="VIP">
          <span class="orb-glyph">V</span>
          <span class="orb-label">VIP</span>
        </button>
        <button class="action-orb pink" type="button" aria-label="Events">
          <span class="orb-glyph">E</span>
          <span class="orb-label">Event</span>
        </button>
      </aside>

      <section class="board-stage" aria-label="English Town board" data-role="board-stage">
        <div class="camera-rig" data-role="camera-rig">
          <div class="board-plane" data-role="board-plane"></div>
        </div>
      </section>

      <section aria-live="polite" class="minigame-modal" data-role="minigame-modal" hidden>
        <div class="minigame-backdrop"></div>
        <div class="minigame-card" data-role="minigame-card">
          <div class="minigame-header">
            <div class="minigame-title-block">
              <span class="minigame-kicker">Special Tile</span>
              <h2 data-role="minigame-title">Lexicon Link</h2>
            </div>
            <div class="minigame-meta">
              <span class="minigame-timer" data-role="minigame-timer">25s</span>
              <span class="minigame-reward" data-role="minigame-reward">+180 coins</span>
            </div>
          </div>

          <p class="minigame-copy" data-role="minigame-copy">
            Match each English word with its Chinese translation before the timer ends.
          </p>

          <div class="minigame-columns">
            <div class="minigame-column">
              <span class="minigame-column-label">English</span>
              <div class="minigame-list" data-role="word-list"></div>
            </div>
            <div class="minigame-column">
              <span class="minigame-column-label">Chinese</span>
              <div class="minigame-list" data-role="translation-list"></div>
            </div>
          </div>

          <p class="minigame-status" data-role="minigame-status">
            Pick a word, then choose the matching translation.
          </p>

          <div class="minigame-footer">
            <span class="minigame-progress" data-role="minigame-progress">0/5 matched</span>
            <button class="minigame-action" data-role="minigame-action" hidden type="button">Continue</button>
          </div>
        </div>
      </section>

      <section class="sentence-modal" data-role="sentence-modal" hidden>
        <div class="minigame-backdrop"></div>
        <div class="minigame-card sentence-card">
          <div class="minigame-header">
            <div class="minigame-title-block">
              <span class="minigame-kicker">Sentence Practice Tile</span>
              <h2 data-role="sentence-title">Sentence Studio</h2>
            </div>
            <div class="minigame-meta">
              <span class="minigame-timer" data-role="sentence-timer">30s</span>
              <span class="minigame-reward" data-role="sentence-reward">+160 coins</span>
            </div>
          </div>

          <p class="minigame-copy" data-role="sentence-clue">
            Arrange the words into the correct sentence.
          </p>
          <p class="sentence-target" data-role="sentence-target">Target idea</p>

          <div class="sentence-builder" data-role="sentence-builder"></div>
          <div class="sentence-bank" data-role="sentence-bank"></div>

          <p class="minigame-status" data-role="sentence-status">
            Tap the words in the correct order.
          </p>

          <div class="sentence-footer">
            <button class="sentence-secondary" data-role="sentence-clear" type="button">Clear</button>
            <span class="minigame-progress" data-role="sentence-progress">0/5 placed</span>
            <button class="minigame-action" data-role="sentence-action" hidden type="button">Continue</button>
          </div>
        </div>
      </section>

      <section class="dialog-modal" data-role="dialog-modal" hidden>
        <div class="minigame-backdrop"></div>
        <div class="dialog-card">
          <span class="minigame-kicker" data-role="dialog-kicker">Tile</span>
          <h2 class="dialog-title" data-role="dialog-title">Property</h2>
          <p class="dialog-copy" data-role="dialog-copy">Dialog copy</p>
          <p class="dialog-meta" data-role="dialog-meta"></p>
          <p class="dialog-status" data-role="dialog-status"></p>
          <div class="dialog-actions">
            <button class="dialog-secondary-button" data-role="dialog-secondary" hidden type="button">Not now</button>
            <button class="dialog-primary-button" data-role="dialog-primary" type="button">Continue</button>
          </div>
        </div>
      </section>

      <section class="attribute-modal" data-role="attribute-modal" hidden>
        <div class="minigame-backdrop"></div>
        <div class="attribute-card" aria-labelledby="attribute-title" aria-modal="true" role="dialog">
          <button class="attribute-close" data-role="attribute-close" type="button" aria-label="Close attribute bonus">
            x
          </button>

          <span class="attribute-card-badge" aria-hidden="true">
            <span class="attribute-heart attribute-heart-large"></span>
          </span>

          <h2 class="attribute-card-title" id="attribute-title">attribute bonus</h2>

          <div class="attribute-card-meter-row">
            <div class="attribute-card-level">
              <span class="attribute-heart attribute-heart-small" aria-hidden="true"></span>
              <strong>Lv.6</strong>
            </div>

            <div class="attribute-card-progress" aria-label="648 of 700 attribute progress">
              <span class="attribute-card-progress-fill" style="width: 92.57%"></span>
              <strong>648/700</strong>
            </div>
          </div>

          <p class="attribute-card-copy">
            Upgrading buildings and increasing the level of chess pieces can increase the prosperity level. The higher
            the prosperity level, the greater the attribute gain.
          </p>

          <div class="attribute-info-list">
            <article class="attribute-info-row">
              <p class="attribute-info-text">
                The income of land block gold coins has increased, and the income of intrusion into the vault has
                increased.
              </p>
              <strong class="attribute-info-value">30%</strong>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">
                Increased the income of intrusion into the vault and boosted block revenue.
              </p>
              <strong class="attribute-info-value">25%</strong>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Golden Pig: Talent Level Upgrade.</p>
              <strong class="attribute-info-value">1</strong>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Plunder land gold coin income.</p>
              <strong class="attribute-info-value">5%</strong>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Destroy buildings and increase profits.</p>
              <div class="attribute-info-lock">
                <strong>Lv.7</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Occupy construction revenue increases.</p>
              <div class="attribute-info-lock">
                <strong>Lv.8</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Increased ransom income.</p>
              <div class="attribute-info-lock">
                <strong>Lv.9</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">The chances of being caught decrease.</p>
              <div class="attribute-info-lock">
                <strong>Lv.10</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Maintenance cost waiver.</p>
              <div class="attribute-info-lock">
                <strong>Lv.11</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Eviction fee waiver.</p>
              <div class="attribute-info-lock">
                <strong>Lv.12</strong>
                <span>Unlock</span>
              </div>
            </article>

            <article class="attribute-info-row">
              <p class="attribute-info-text">Decreased dice recovery time.</p>
              <div class="attribute-info-lock">
                <strong>Lv.13</strong>
                <span>Unlock</span>
              </div>
            </article>
          </div>
        </div>
      </section>

      <footer class="bottom-hud">
        <div class="dock-side">
          <button class="nav-orb mint" type="button" aria-label="Map">
            <span class="orb-glyph">M</span>
            <span class="orb-label">Map</span>
          </button>
          <button class="nav-orb peach" type="button" aria-label="Cards">
            <span class="orb-glyph">C</span>
            <span class="orb-label">Cards</span>
          </button>
        </div>

        <div class="dice-dock">
          <button class="free-dice-claim" data-role="free-dice-claim" type="button" hidden>
            <span class="free-dice-icon" aria-hidden="true">
              <span class="free-dice-pip pip-one"></span>
              <span class="free-dice-pip pip-two"></span>
              <span class="free-dice-pip pip-three"></span>
            </span>
            <span class="free-dice-copy">
              <strong>Free Dice</strong>
              <span data-role="free-dice-label">Build 5 houses</span>
            </span>
            <span class="free-dice-hand" aria-hidden="true">
              <span class="free-dice-finger"></span>
            </span>
          </button>

          <button aria-label="Roll dice" class="dice-trigger" data-role="roll-trigger" type="button">
            <span class="sr-only">Roll dice</span>
            <span class="dice-trigger-art" aria-hidden="true" data-role="dice-art"></span>
          </button>
          <div class="dice-meter-shell">
            <div
              aria-label="Dice remaining"
              aria-valuemax="15"
              aria-valuemin="0"
              aria-valuenow="15"
              class="dice-meter-track"
              data-role="dice-meter-track"
              role="progressbar"
            >
              <span class="dice-meter-fill" data-role="dice-meter-fill"></span>
              <strong class="dice-meter-count">
                <span data-role="dice-count">15/15</span>
                <span class="dice-meter-overflow" data-role="dice-overflow" hidden>+5</span>
              </strong>
            </div>
            <div class="dice-meter-side">
              <button aria-label="Buy more dice" class="dice-meter-plus" data-role="dice-store-trigger" type="button">+</button>
            </div>
          </div>
          <p class="dice-label">Tap to roll</p>
        </div>

        <div class="dock-side dock-side-right">
          <button class="nav-orb lime" type="button" aria-label="Tasks">
            <span class="orb-glyph">T</span>
            <span class="orb-label">Tasks</span>
          </button>
          <button class="nav-orb violet" type="button" aria-label="Shop">
            <span class="orb-glyph">S</span>
            <span class="orb-label">Shop</span>
          </button>
        </div>
      </footer>
    </section>
  </main>
</template>
