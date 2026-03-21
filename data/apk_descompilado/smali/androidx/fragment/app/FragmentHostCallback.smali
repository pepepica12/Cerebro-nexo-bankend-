.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mContext:Landroid/content/Context;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mWindowAnimations:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 95
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    .line 81
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 96
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 97
    const-string v0, "context == null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 98
    const-string v0, "handler == null"

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 99
    iput p4, p0, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    .line 100
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;

    .line 91
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 92
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 242
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 247
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 252
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method
