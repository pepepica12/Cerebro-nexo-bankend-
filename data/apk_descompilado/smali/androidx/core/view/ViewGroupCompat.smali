.class public abstract Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# direct methods
.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 156
    nop

    .line 157
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method
