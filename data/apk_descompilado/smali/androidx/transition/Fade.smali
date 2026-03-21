.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .line 92
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->setMode(I)V

    .line 94
    return-void
.end method

.method public static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .locals 3
    .param p0, "startValues"    # Landroidx/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    .line 174
    move v0, p1

    .line 175
    .local v0, "startAlpha":F
    if-eqz p0, :cond_0

    .line 176
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 177
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 181
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_0
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 116
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 117
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 118
    invoke-static {v1}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 117
    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public final createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 125
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 129
    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 135
    .local v1, "listener":Landroidx/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    new-instance v2, Landroidx/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 144
    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 157
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    .line 158
    .local v0, "startAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_0
    invoke-virtual {p0, p2, v0, v1}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 168
    invoke-static {p2}, Landroidx/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    .line 170
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
