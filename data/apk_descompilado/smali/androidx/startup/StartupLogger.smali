.class public abstract Landroidx/startup/StartupLogger;
.super Ljava/lang/Object;
.source "StartupLogger.java"


# direct methods
.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 61
    const-string v0, "StartupLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
