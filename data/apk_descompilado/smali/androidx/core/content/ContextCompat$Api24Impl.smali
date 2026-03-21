.class public abstract Landroidx/core/content/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api24Impl"
.end annotation


# direct methods
.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;

    .line 1098
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method
