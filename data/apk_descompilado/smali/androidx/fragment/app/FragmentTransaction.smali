.class public abstract Landroidx/fragment/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransaction$Op;
    }
.end annotation


# instance fields
.field public mAddToBackStack:Z

.field public mAllowAddToBackStack:Z

.field public mBreadCrumbShortTitleRes:I

.field public mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field public mBreadCrumbTitleRes:I

.field public mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field public final mClassLoader:Ljava/lang/ClassLoader;

.field public mCommitRunnables:Ljava/util/ArrayList;

.field public mEnterAnim:I

.field public mExitAnim:I

.field public final mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field public mName:Ljava/lang/String;

.field public mOps:Ljava/util/ArrayList;

.field public mPopEnterAnim:I

.field public mPopExitAnim:I

.field public mReorderingAllowed:Z

.field public mSharedElementSourceNames:Ljava/util/ArrayList;

.field public mSharedElementTargetNames:Ljava/util/ArrayList;

.field public mTransition:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "fragmentFactory"    # Landroidx/fragment/app/FragmentFactory;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 127
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 128
    iput-object p2, p0, Landroidx/fragment/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    .line 129
    return-void
.end method


# virtual methods
.method public add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 235
    return-object p0
.end method

.method public add(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 240
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 172
    return-object p0
.end method

.method public addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V
    .locals 1
    .param p1, "op"    # Landroidx/fragment/app/FragmentTransaction$Op;

    .line 132
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 134
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 135
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 136
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 137
    return-void
.end method

.method public addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 655
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    .line 660
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    .line 661
    return-object p0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    .line 682
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 687
    return-object p0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 7
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 246
    .local v0, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 247
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 254
    :cond_0
    const-string v2, " now "

    const-string v3, ": was "

    if-eqz p3, :cond_3

    .line 255
    iget-object v4, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_0

    .line 256
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t change tag of fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 263
    :cond_3
    if-eqz p1, :cond_7

    .line 264
    const/4 v4, -0x1

    if-eq p1, v4, :cond_6

    .line 268
    iget v4, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v4, :cond_4

    iget v4, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v4, p1, :cond_5

    :cond_4
    goto :goto_1

    .line 269
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t change container ID of fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 273
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_2

    .line 265
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_7
    :goto_2
    new-instance v2, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v2, p4, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    .line 277
    return-void

    .line 249
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 357
    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    .line 359
    return-object p0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 340
    if-eqz p1, :cond_0

    .line 343
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 344
    return-object p0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .line 575
    iput p1, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    .line 576
    iput p2, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    .line 577
    iput p3, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    .line 578
    iput p4, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    .line 579
    return-object p0
.end method

.method public setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 0
    .param p1, "reorderingAllowed"    # Z

    .line 782
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 783
    return-object p0
.end method
