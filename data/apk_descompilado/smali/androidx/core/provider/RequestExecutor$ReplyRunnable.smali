.class public Landroidx/core/provider/RequestExecutor$ReplyRunnable;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/RequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplyRunnable"
.end annotation


# instance fields
.field public mCallable:Ljava/util/concurrent/Callable;

.field public mConsumer:Landroidx/core/util/Consumer;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 135
    .local p0, "this":Landroidx/core/provider/RequestExecutor$ReplyRunnable;, "Landroidx/core/provider/RequestExecutor$ReplyRunnable<TT;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p3, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mCallable:Ljava/util/concurrent/Callable;

    .line 137
    iput-object p3, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mConsumer:Landroidx/core/util/Consumer;

    .line 138
    iput-object p1, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    .local p0, "this":Landroidx/core/provider/RequestExecutor$ReplyRunnable;, "Landroidx/core/provider/RequestExecutor$ReplyRunnable<TT;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 146
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 149
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v1, v0

    .line 150
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mConsumer:Landroidx/core/util/Consumer;

    .line 151
    .local v2, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<TT;>;"
    iget-object v3, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;

    invoke-direct {v4, p0, v2, v1}, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;-><init>(Landroidx/core/provider/RequestExecutor$ReplyRunnable;Landroidx/core/util/Consumer;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
