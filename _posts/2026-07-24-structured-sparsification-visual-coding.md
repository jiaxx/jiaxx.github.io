---
layout: post
title: "Fewer, Better-Organized Interactions: How Behavioral State Reshapes Visual Coding"
subtitle: "Our new preprint links structured sparsification of cortical signal-transmission networks to more accurate and faster sensory coding."
summary: "Our new preprint links structured sparsification of cortical signal-transmission networks to more accurate and faster sensory coding."
date: 2026-07-24
author: "Xiaoxuan Jia"
permalink: /structured-sparsification-visual-coding/
description: "Using large-scale Neuropixels recordings and network modeling, we show how locomotion reorganizes inferred visual-cortical signal transmission toward fewer, more selective, and better-organized interactions."
image: /assets/img/posts/structured-sparsification-fig7.png
image_alt: "Summary of locomotion-induced structured sparsification and its effects on visual coding"
categories:
  - Research
tags:
  - neuroscience
  - visual cortex
  - neural coding
  - Neuropixels
  - network science
  - behavioral state
preprint_url: "https://www.biorxiv.org/content/10.64898/2026.07.19.737501v1"
doi: "10.64898/2026.07.19.737501"
rights_holder: "Xiaoxuan Jia"
---

How can the same cortical circuit rapidly change the accuracy and speed of sensory processing?

The anatomical wiring of the brain does not need to be rebuilt each time an animal begins to move. Yet the transition from stillness to locomotion can substantially change visual responses: neurons can respond more reliably and selectively, shared variability can decrease, and stimulus information can become available more quickly.

Most studies of behavioral state have approached these changes by asking how neural activity is modulated. In our new bioRxiv preprint, **[“Structured Sparsification of Signal-Transmission Networks Enhances Visual Information Coding”](https://www.biorxiv.org/content/10.64898/2026.07.19.737501v1)**, led by **Jiaji Zhu**, we asked a complementary question:

**Does behavioral state reorganize the inferred routes through which signals are transmitted across the visual cortex—and can this reorganization help explain why sensory coding becomes more accurate and faster?**

> **In brief:** During locomotion, inferred visual-cortical interactions became sparser, while the network was reorganized to be more local, modular, feature-specific, temporally precise, and feedforward. Network models showed how this structured reorganization can improve coding fidelity and accelerate information processing.

## From population activity to signal-transmission networks

We analyzed simultaneous Neuropixels recordings from six mouse visual cortical areas in the Allen Brain Observatory. The mice passively viewed a range of artificial and natural visual stimuli while alternating between stationary and locomotion states.

Rather than considering only how strongly individual neurons responded, we examined fast, directed statistical relationships between pairs of neurons. We inferred these relationships using **jitter-corrected cross-correlograms**, which reduce correlations caused by stimulus locking, global state fluctuations, and other slower co-modulations, helping isolate precise, short-timescale spike-timing interactions.

The resulting graphs are referred to as **signal-transmission networks**. Each directed edge describes an inferred short-latency statistical relationship between the activity of two recorded neurons.

An important qualification is that these networks are **not anatomical connectomes**. An inferred interaction can reflect direct coupling, an indirect pathway, shared input, or the influence of unrecorded neurons. The networks therefore describe the statistical organization of fast signal transmission across the recorded population, rather than direct measurements of synaptic wiring.

## Locomotion produces structured sparsification

The first finding was counterintuitive: during locomotion, the inferred network contained **fewer interactions overall**.

A reduction in interaction density might sound like weaker communication. However, the remaining interactions had shorter estimated transmission latencies and narrower temporal profiles. Communication was therefore not simply reduced; it became more temporally precise and selectively organized.

The sparsification was also highly structured.

During locomotion, long-range and between-area interactions were reduced more strongly than short-range and within-area interactions. The network consequently became more spatially localized and more strongly partitioned into functional modules.

The remaining interactions were also more closely aligned with visual feature preference: neurons with similar tuning were relatively more likely to interact. Input targeting shifted toward less-selective neurons and away from highly selective neurons. Across the visual hierarchy, the balance of inter-area transmission also shifted toward a more feedforward organization, with feedback interactions preferentially reduced.

We call this coordinated reorganization **structured sparsification**.

The word *structured* is essential. Randomly removing interactions would not necessarily improve computation and could easily disrupt it. Here, locomotion preferentially shifted the inferred network toward communication routes that were more local, modular, feature-aligned, feedforward, and temporally precise.

In other words, locomotion did not simply turn cortical communication up or down. It changed **which routes were emphasized**.

{% include figure.html
   src="/assets/img/posts/structured-sparsification-fig7.png"
   alt="Summary schematic comparing stationary and locomotion states. During locomotion, inferred visual-cortical interactions become sparser but more local, within-area, feature-specific, feedforward, selectively targeted, and temporally precise. These network changes are linked to higher Fisher information, earlier decoding, and more direct population dynamics."
   caption="<strong>Structured sparsification links behavioral state to the fidelity and speed of visual coding.</strong> During locomotion, inferred signal-transmission networks become sparser and are reorganized toward a higher within-area fraction, a narrower spatial scale, greater feature specificity, altered input targeting, greater feedforwardness, and more precise timing. These changes are linked to higher Fisher information, earlier decoding, and more direct population dynamics."
   credit="Summary figure from <a href='https://www.biorxiv.org/content/10.64898/2026.07.19.737501v1'>Zhu and Jia (2026)</a>, available under a <a href='https://creativecommons.org/licenses/by-nc-nd/4.0/'>CC BY-NC-ND 4.0 license</a>."
   class="article-figure--wide" %}

## Why can fewer interactions support better coding?

Observing a change in network organization does not by itself explain why visual coding improves. To investigate possible mechanisms, we combined rate-based network models with a geometric **linear Fisher-information** framework.

Linear Fisher information describes how precisely a neural population can distinguish nearby stimuli using a linear readout. In intuitive terms, coding improves when:

1. the mean population response changes more strongly with the stimulus;
2. trial-to-trial variability becomes smaller; or
3. the dominant directions of variability become less aligned with the population direction that carries stimulus information.

The third factor is especially important. Neural variability is most damaging when it occurs along the same population dimension that distinguishes one stimulus from another. Large fluctuations in other directions may have much less effect on discrimination.

The modeling results linked different components of structured sparsification to different aspects of this coding geometry.

Reduced interaction density helped suppress shared variability. More localized and within-area organization changed the structure of population covariance and reduced the alignment between stimulus-sensitive directions and dominant noise dimensions. Greater feature specificity, together with the shift in input targeting toward less-selective neurons, sharpened neuronal tuning and increased the stimulus-dependent signal.

Together, these modeled changes improved coding through a combination of:

- **less shared variability;**
- **reduced alignment between signal and noise;**
- **and sharper stimulus selectivity.**

The key contribution of the modeling is therefore not simply the observation that locomotion changes network structure. It provides a mechanistic bridge from specific features of network organization to the geometry and precision of the population code.

## A more feedforward network supports faster processing

Coding fidelity is only part of sensory computation. Information must also become available quickly.

During locomotion, the inferred inter-area network shifted toward a more feedforward organization. We tested the consequences of this change in a multi-area network model containing both feedforward and feedback projections.

Increasing feedforward organization was sufficient to make grating orientation decodable earlier in higher visual areas. It also generated more direct and less tangled population trajectories—the evolving paths traced by neural activity through population state space.

These results suggest that a relative shift toward feedforward transmission can create a more direct route for sensory information to propagate through the cortical hierarchy.

This should not be interpreted as showing that feedback is generally undesirable. Recurrent and feedback processing may be especially important when sensory evidence is incomplete, ambiguous, occluded, or otherwise difficult to interpret. Our findings instead identify a modeled regime in which greater feedforward organization supports rapid processing of the stimuli examined in this study.

## Behavioral state as dynamic information routing

Locomotion is often described as changing cortical gain, inhibition, arousal, response reliability, or shared variability. Our findings complement these accounts by adding a network-level perspective.

Behavioral state may regulate not only **how much neurons respond**, but also:

- which neurons interact through fast-timescale statistical relationships;
- which communication routes are relatively preserved or suppressed;
- which stimulus dimensions are amplified;
- and how signals are directed between cortical areas.

From this perspective, behavioral state acts partly as a mechanism for **dynamic information routing**. The underlying anatomy remains largely fixed over short timescales, while the signal-transmission network operating within that anatomy can be rapidly reconfigured.

This idea may extend beyond locomotion. Attention, learning, development, and arousal also alter population activity and inter-area communication. Whether they produce related forms of structured sparsification is now a testable question.

## What the study does—and does not—establish

Several limitations are important.

First, the inferred signal-transmission networks describe fast statistical interactions rather than direct anatomical connections. Short-lag interactions can arise from monosynaptic coupling, polysynaptic pathways, common input, unobserved intermediate neurons, or state-dependent coordination across populations.

Second, the models show that the observed architectural changes are **sufficient** to improve coding geometry and accelerate information processing under the modeled conditions. They do not establish structured sparsification as the only mechanism responsible for locomotion-related changes.

Third, locomotion covaries with arousal, neuromodulatory tone, eye movements, whisking, facial movements, and other uninstructed behaviors. Future work will be needed to determine which underlying physiological processes drive the observed network reorganization.

A critical next step will be to combine large-scale recordings with targeted perturbations. Such experiments could test whether the local, feature-specific, and feedforward pathways relatively preserved during locomotion are causally necessary for improved visual coding.

## Less is more—when less is structured

The central lesson is not that fewer interactions are always better.

The benefit comes from **selective organization**.

During locomotion, broad and potentially interfering interactions are reduced while more local, feature-aligned, temporally precise, and feedforward routes are relatively preserved. This reorganizes the geometry and dynamics of population activity in ways that can improve both the fidelity and the speed of sensory coding.

The cortex may therefore improve communication not by increasing interaction everywhere, but by allocating communication more selectively—allowing the right signals to travel through the right routes at the right time.

---

**Read the preprint:** [Structured Sparsification of Signal-Transmission Networks Enhances Visual Information Coding](https://www.biorxiv.org/content/10.64898/2026.07.19.737501v1)

*Authors: Jiaji Zhu and Xiaoxuan Jia.*

*This manuscript is a preprint and has not yet been certified by peer review.*
