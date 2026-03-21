.class public Landroidx/transition/TransitionSet;
.super Landroidx/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# instance fields
.field public mChangeFlags:I

.field public mCurrentListeners:I

.field public mPlayTogether:Z

.field public mStarted:Z

.field public mTransitions:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 88
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 307
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 274
    .end local v0    # "i":I
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .locals 4
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 179
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransitionInternal(Landroidx/transition/Transition;)V

    .line 180
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 183
    :cond_0
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 186
    :cond_1
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroidx/transition/Transition;->getPropagation()Landroidx/transition/TransitionPropagation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 189
    :cond_2
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 192
    :cond_3
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Landroidx/transition/Transition;->getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 195
    :cond_4
    return-object p0
.end method

.method public final addTransitionInternal(Landroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 199
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iput-object p0, p1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 201
    return-void
.end method

.method public cancel()V
    .locals 3

    .line 581
    invoke-super {p0}, Landroidx/transition/Transition;->cancel()V

    .line 582
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2}, Landroidx/transition/Transition;->cancel()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 586
    .end local v1    # "i":I
    return-void
.end method

.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 536
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 538
    .local v1, "childTransition":Landroidx/transition/Transition;
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 540
    iget-object v2, p1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v1    # "childTransition":Landroidx/transition/Transition;
    :cond_0
    goto :goto_0

    .line 544
    :cond_1
    return-void
.end method

.method public capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 548
    invoke-super {p0, p1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 549
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 551
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 553
    .end local v1    # "i":I
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 524
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 526
    .local v1, "childTransition":Landroidx/transition/Transition;
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 528
    iget-object v2, p1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v1    # "childTransition":Landroidx/transition/Transition;
    :cond_0
    goto :goto_0

    .line 532
    :cond_1
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 4

    .line 639
    invoke-super {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    .line 640
    .local v0, "clone":Landroidx/transition/TransitionSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 641
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 642
    .local v1, "numTransitions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 643
    iget-object v3, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    invoke-virtual {v3}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/transition/TransitionSet;->addTransitionInternal(Landroidx/transition/Transition;)V

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 645
    .end local v2    # "i":I
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroidx/transition/TransitionValuesMaps;

    .line 466
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    .line 467
    .local v0, "startDelay":J
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 468
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 469
    iget-object v4, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/transition/Transition;

    .line 472
    .local v5, "childTransition":Landroidx/transition/Transition;
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    iget-boolean v4, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_2

    .line 473
    :cond_0
    invoke-virtual {v5}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v8

    .line 474
    .local v8, "childStartDelay":J
    cmp-long v4, v8, v6

    if-lez v4, :cond_1

    .line 475
    add-long v6, v0, v8

    invoke-virtual {v5, v6, v7}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v5, v0, v1}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 480
    .end local v8    # "childStartDelay":J
    :cond_2
    :goto_1
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 468
    .end local v5    # "childTransition":Landroidx/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 483
    .end local v3    # "i":I
    return-void
.end method

.method public getTransitionAt(I)Landroidx/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    .line 223
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    return-object v0

    .line 224
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionCount()I
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 559
    invoke-super {p0, p1}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 564
    .end local v1    # "i":I
    return-void
.end method

.method public bridge synthetic removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 385
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 325
    .end local v0    # "i":I
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 570
    invoke-super {p0, p1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 575
    .end local v1    # "i":I
    return-void
.end method

.method public runAnimators()V
    .locals 4

    .line 491
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 493
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    .line 494
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->setupStartEndListeners()V

    .line 497
    iget-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v0, :cond_3

    .line 500
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 502
    .local v1, "previousTransition":Landroidx/transition/Transition;
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 503
    .local v2, "nextTransition":Landroidx/transition/Transition;
    new-instance v3, Landroidx/transition/TransitionSet$1;

    invoke-direct {v3, p0, v2}, Landroidx/transition/TransitionSet$1;-><init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V

    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 500
    .end local v1    # "previousTransition":Landroidx/transition/Transition;
    .end local v2    # "nextTransition":Landroidx/transition/Transition;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 511
    .end local v0    # "i":I
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    .line 512
    .local v0, "firstTransition":Landroidx/transition/Transition;
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    .line 515
    .end local v0    # "firstTransition":Landroidx/transition/Transition;
    :cond_2
    goto :goto_2

    .line 516
    :cond_3
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 517
    .local v1, "childTransition":Landroidx/transition/Transition;
    invoke-virtual {v1}, Landroidx/transition/Transition;->runAnimators()V

    .line 518
    .end local v1    # "childTransition":Landroidx/transition/Transition;
    goto :goto_1

    .line 520
    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroidx/transition/TransitionSet;
    .locals 4
    .param p1, "duration"    # J

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 240
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Landroidx/transition/Transition$EpicenterCallback;

    .line 620
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 621
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 622
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 626
    .end local v1    # "i":I
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;
    .locals 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 258
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 259
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 261
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public setOrdering(I)Landroidx/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 141
    nop

    .line 146
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Landroidx/transition/PathMotion;

    .line 390
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 391
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 392
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Landroidx/transition/TransitionPropagation;

    .line 610
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 611
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 612
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 616
    .end local v1    # "i":I
    return-void
.end method

.method public bridge synthetic setStartDelay(J)Landroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/TransitionSet;->setStartDelay(J)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setStartDelay(J)Landroidx/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J

    .line 252
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public final setupStartEndListeners()V
    .locals 3

    .line 418
    new-instance v0, Landroidx/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v0, p0}, Landroidx/transition/TransitionSet$TransitionSetListener;-><init>(Landroidx/transition/TransitionSet;)V

    .line 419
    .local v0, "listener":Landroidx/transition/TransitionSet$TransitionSetListener;
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 420
    .local v2, "childTransition":Landroidx/transition/Transition;
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 421
    .end local v2    # "childTransition":Landroidx/transition/Transition;
    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 423
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .line 630
    invoke-super {p0, p1}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 634
    .end local v1    # "i":I
    return-object v0
.end method
