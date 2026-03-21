.class public abstract Landroidx/core/view/ViewCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api30Impl"
.end annotation


# direct methods
.method public static getImportantForContentCapture(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5497
    invoke-virtual {p0}, Landroid/view/View;->getImportantForContentCapture()I

    move-result v0

    return v0
.end method

.method public static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5482
    invoke-virtual {p0}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isImportantForContentCapture(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5492
    invoke-virtual {p0}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v0

    return v0
.end method

.method public static setImportantForContentCapture(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 5487
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForContentCapture(I)V

    .line 5488
    return-void
.end method

.method public static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 5477
    invoke-virtual {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 5478
    return-void
.end method
