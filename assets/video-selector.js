(function() {
  /**
   * @typedef {Object} VideoDescription
   * @prop {string} id The youtube video id
   * @prop {string} title
   * @prop {string} description
   */

  /**
   * @param {string} selector
   * @param {VideoDescription} initialVideo
   */
  var VideoSelector = function(selector, initialVideo) {
    this.elem = $(selector);
  };

  /**
   * @param {VideoDescription} nextVideo
   */
  VideoSelector.prototype.set = function(nextVideo) {};

  window.VideoSelector = VideoSelector;
})();

$(function() {});
