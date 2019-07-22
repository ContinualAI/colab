# ContinualAI Colab Contribution Guidelines
The aim of the ContinualAI Colab is tutorials that give practical examples for continual learning algorithms and ideas that can be executed in [Google Colab](https://colab.research.google.com/). The scope of the tutorials is such that everyone can experience and understand continual learning techniques on a smaller scale inside the browser (or locally by downloading the notebooks). Most often this will be a re-implementation of already published work. 

## Contribution workflow
Our Continual AI Colab works more or less like any open source project. If you have never contributed to open source before, here is a list of every single aspect and a short summary of what it is for:

* [Issues](https://github.com/ContinualAI/colab/issues): Basically there is two reasons to open an issue: you found **a bug** or you are **proposing a new feature**. If you have found a bug, please try to supply as many details as possible so that others can reproduce/understand it. If you are proposing a new feature and you know what you are doing, it is okay to open an issue and specify the details of what you are doing with inclusion of your code. If it isn’t specific and fledged out yet, please start a discussion in Slack (see below). In both cases, please visit the list of existing issues to check that no one else has filed a similar issue. Issues aren’t owned by a particular person, sometimes people end up not having enough time to finish their own proposals, so feel free to pick any issue to work on =)!
* [Pull Requests](https://github.com/ContinualAI/colab/pulls): If an open issue has been discussed sufficiently and the comments point out that an agreement has been reached, you can open a pull request to **address the issue with your solution**. If you don’t feel confident enough or the issue is more difficult, please comment on the issue with your question and ideas so that others can provide more feedback or get more inspiration. Once a pull request is opened, we will assign a reviewer before accepting and merging. 
* [Project Board](https://github.com/ContinualAI/colab/projects/1): The project board is structured into the tabs: “to do”, “in progress”, “review” and “done”. It is automated in a way that newly opened issues and pull requests get added when they are opened. We sometimes also add other ToDos. It’s basically **everything in one place to gain an overview** of what is happening and figure out where you can start.
* [ContinualAI Slack!](https://continualai.herokuapp.com/): Sometimes it’s better to have a **direct discussion on ideas and get feedback when things aren’t very clear yet and more brainstorming is necessary** instead of having a needlessly long issue post. We would love if such discussion could take place in our Slack. If this is something you don’t want to join, then opening up an issue is just fine. 

Suggestions before you contribute:

* **Figure out what you want to do**: Look through issues or follow the discussion on Slack and eventually propose something yourself. We have some guidelines below to help you figure out how to add new content and what to consider when doing so.
* **Reach out**: If you are proposing something that is very large in nature like the addition of a standalone tutorial, new algorithm/technique, get some feedback on design first. We do not have a coding standards document yet, so it’s best to spark a small discussion to make sure that we are following some standard. We do have general guidelines that can be found below.
* **Work in Progress Pull Requests**: You can open a pull request, even if you aren’t 100% sure that the solution is right. We kindly ask you to mention that it’s work in progress and we will iterate on the pull request before accepting and merging it. 

## Content guidelines
With the process described, let’s take a look at dos and don’ts for creation of new content and refinement of existing one.

### Creation of a new notebook/implementation of new algorithms
If you have gotten some feedback on your idea or have picked some new feature to work on we encourage you to go ahead and code it (and eventually mention that you are doing so in the corresponding issue/Slack). You don’t necessarily have to finish everything by yourself. If you are stuck at some point ask for help. There even is an option to commit with multiple authors at the end to properly credit the people involved. 

### Coding and Documentation
Please document your code so that other people can understand it. You should comment wherever it is necessary to help people follow. In general this means commenting what code is doing and what its purpose is instead of commenting something trivial like `a += 1`  with ”increment counter”. 
Given that the majority of the content is on a tutorial level, this also means there should be text cells describing the necessary background knowledge (like math and general ideas) so that the reader can follow the tutorial and understand the context of the code in a natural flow. 

### Citation and Credit
Most of the algorithms featured in the tutorial notebooks have been published by someone or are described in some preprint or blog post. To give authors credit where credit is due we kindly ask you to include all necessary citations to the corresponding works in the text. However, this doesn’t mean you should cite every single aspect like you would typically do in an academic paper. Instead, say your tutorial focuses on the implementation of a specific algorithm in a specific neural network architecture, cite those two. If there is a nice overview available you can cite that in addition, but we believe it is only fair to also acknowledge the original authors work. Without saying, this also goes for code snippets/gists that you include from some other open source project/repository. 

### Creating scripts and abstracting functionality into separate files
Since we are doing machine learning, much of the code consist of reusable pieces that can and should be shared by other tutorial notebooks. When assembling your tutorial, thus try to abstract away any functionality that is non-imminent to the specifics of your tutorial. Picking up the above example of algorithm *x* and neural network *y*, your tutorial should visibly contain the direct implementation of *x* and *y*. Please don’t abstract this somewhere else so that the reader cannot follow the tutorial without leaving it multiple times! Reading a tutorial where the main method that is supposed to be explained is a one-line call of some hidden function can be very frustrating. On the other hand, things like data loaders or a common evaluation script can be very useful to create consistency across different tutorials and mask detail unnecessary to the essence of a tutorial. 

### Common Evaluation
If you are implementing a new continual learning technique and the technique itself permits a comparison, it will be a good idea to evaluate in a common frame with the same metrics. To give a concrete example for image classification: if tutorial *a* and *b* show results on dataset *x* split into three chunks, try not to report on dataset *x* split into four chunks instead. It is fine to do the latter if you want to point something out that is specific to your tutorial, but try to also include the immediate comparison if working on a quantitative benchmark. 

### Use of programming frameworks
There is no general preferred programming framework on top of Python such as PyTorch or TensorFlow. If you are more familiar with one or the other, feel free to create your tutorial notebook with the respective environment. As long as you can execute the tutorial in Python Colab this should be fine. 

### Common things to avoid
Here is a short list of things to generally avoid:

* **Unhelpful comments**: don’t add unnecessary comments everywhere like `a += 1`with “increment the counter”, without stating what the purpose is.
* **Very large pull requests**: try to not to address more than 1 issue at once and make changes to too many files at the same time. It is very hard to go through such pull requests, approve and merge them. 
* **Hacks**: some algorithms can be implemented in hacky ways that can make something work empirically. Unless it is something that is specified by the original authors, try to avoid hacks or raise a suggestion/question to spark discussion on whether a hack is necessary or could be implemented in a proper fashion. 

### Review
Pull requests will be reviewed. For now the reviewers are assigned internally. However, if you have made some contribution and are passionate about the project we will appreciate your help in reviewing as well!

## Avalanche 
In parallel to our ContinualAI Colab tutorial repository we are working on a framework for ContinualAI research: [ContinualAI/avalanche: A Comprehensive Framework for Continual Learning Research](https://github.com/ContinualAI/avalanche) . At the moment there is no immediate plan to bring these two frameworks together, but it is imaginable and desirable for future endeavours. If you would like to work on something beyond tutorials, please consider contributing to Avalanche. 

## Sharing is caring 
Spread the word about ContinualAI =) 