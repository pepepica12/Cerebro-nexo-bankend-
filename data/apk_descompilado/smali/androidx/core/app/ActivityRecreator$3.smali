.class public Landroidx/core/app/ActivityRecreator$3;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityRecreator;->queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityThread:Ljava/lang/Object;

.field public final synthetic val$token:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 268
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 272
    const/4 v0, 0x0

    .line 274
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 272
    :try_start_0
    sget-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 273
    sget-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    .line 274
    const-string v4, "AppCompat recreation"

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 273
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    goto :goto_2

    .line 276
    :cond_0
    sget-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    .line 277
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 276
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    :goto_0
    goto :goto_3

    .line 288
    :goto_1
    nop

    .line 289
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 279
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 281
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_1

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 284
    :cond_2
    throw v0

    .line 291
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    return-void
.end method
