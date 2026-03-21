.class public abstract Landroidx/core/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ActionProvider$VisibilityListener;,
        Landroidx/core/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

.field public mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method


# virtual methods
.method public abstract hasSubMenu()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
.end method

.method public abstract onPerformDefaultAction()Z
.end method

.method public abstract onPrepareSubMenu(Landroid/view/SubMenu;)V
.end method

.method public abstract overridesItemVisibility()Z
.end method

.method public reset()V
    .locals 1

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 311
    iput-object v0, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 312
    return-void
.end method

.method public setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 288
    iput-object p1, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 289
    return-void
.end method

.method public abstract setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
.end method
