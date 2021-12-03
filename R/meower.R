#' Centered Headline 0 for LaTeX
#'
#' Gives centered comments for LaTeX. Always capitalized.
#'
#' @usage meower()
#'
#' @param willdonothing String for nothing
#'
#' @examples meower("My name is Catty McCatface")
#'
#' @export
meower <- function(humanish) {

  if (grepl("i like dog", humanish, ignore.case = T)) {
    meow <- "MeOW?!!!???! MEOW!!1!1! MEOWMEOWWWWW MEOWWW!!!!!"
  } else {
    n <- (lengths(gregexpr("\\W+", humanish)) + 1) * 2
    moews <- c("me", "meow", "MEOW!!", ";-)", "mEoW", "meooow", "meee",
               "OWW!", "MeeeOwOw", rep(" ", 10), rep(",", 2), rep(".", 2))
    paste(sample(moews, n, replace = T), collapse = "")
  }

}

humaner <- function(meowish) {

    humans <- c("The cosmos is within us. We are made of star-stuff. We are a way for the universe to know itself.",
                "God does not play dice with the universe.",
                "In fact, the mere act of opening the box will determine the state of the cat, although in this case there were three determinate states the cat could be in: these being Alive, Dead, and Bloody Furious.",
                "As far as the laws of mathematics refer to reality, they are not certain; and as far as they are certain, they do not refer to reality.",
                "Protons give an atom its identity, electrons its personality.",
                "Not only does God play dice but... he sometimes throws them where they cannot be seen.",
                "So Einstein was wrong when he said, 'God does not play dice.' Consideration of black holes suggests, not only that God does play dice, but that he sometimes confuses us by throwing them where they can't be seen.",
                "Small shifts in your thinking, and small changes in your energy, can lead to massive alterations of your end result.",
                "Theology, philosophy, metaphysics, and quantum physics are merely ways for God to have his smart people believe in him",
                "The atoms or elementary particles themselves are not real; they form a world of potentialities or possibilities rather than one of things or facts.",
                "In the world of the very small, where particle and wave aspects of reality are equally significant, things do not behave in any way that we can understand from our experience of the everyday world...all pictures are false, and there is no physical analogy we can make to understand what goes on inside atoms. Atoms behave like atoms, nothing else.",
                "To shift your life in a desired direction, you must powerfully shift your subconscious.",
                "The more we delve into quantum mechanics the stranger the world becomes; appreciating this strangeness of the world, whilst still operating in that which you now consider reality, will be the foundation for shifting the current trajectory of your life from ordinary to extraordinary. It is the Tao of mixing this cosmic weirdness with the practical and physical, which will allow you to move, moment by moment, through parallel worlds to achieve your dreams.",
                "The law of sympathy is one of the most basic parts of magic. It states that the more similar two objects are, the greater the sympathetic link. The greater the link, the more easily they influence each other.",
                "In modern physics, there is no such thing as 'nothing.' Even in a perfect vacuum, pairs of virtual particles are constantly being created and destroyed. The existence of these particles is no mathematical fiction. Though they cannot be directly observed, the effects they create are quite real. The assumption that they exist leads to predictions that have been confirmed by experiment to a high degree of accuracy.",
                "At the heart of quantum mechanics is a rule that sometimes governs politicians or CEOs - as long as no one is watching, anything goes.",
                "Every conscious thought you have, every moment you spend on an idea, is a commitment to be stuck with that idea and with aspects of that level of thinking, for the rest of your life. Spending just 10 seconds focusing on a topic that does not serve your interests is to invest your energy along a path that will continue to draw from you and define you.",
                "Consciousness is not just interaction of neurotransmitters in the brain it has also some quantum cosmic component.",
                "In the early days of atomic physics [before quantum field theory revealed the true meaning of the fine structure constant to be the strength of the coupling between the electron and photon], it was thought to have a value so close to being precisely 1/137 that numerologists started to establish cultish associations with the number 137.",
                "The 114 chakras exhibits quantum coherence., through which the body maintains balance endocrine hormone secretion, circadian rhythms and optimal mind-body connections. The decoherence is associated with diseases.",
                "I was floating, lost between the worlds. The familiar pull of dread took hold of me once again. Looming archetypal shadows lingered on the edge of my mind, crushing me beneath the sorrow."
                )
    sample(humans, 1)

}


