.class public abstract Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Api26Impl;,
        Landroidx/core/app/RemoteInput$Api20Impl;,
        Landroidx/core/app/RemoteInput$Api29Impl;
    }
.end annotation


# direct methods
.method public static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 1
    .param p0, "src"    # Landroidx/core/app/RemoteInput;

    .line 565
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .locals 4
    .param p0, "srcArray"    # [Landroidx/core/app/RemoteInput;

    .line 553
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 554
    return-object v0

    .line 556
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Landroid/app/RemoteInput;

    .line 557
    .local v1, "result":[Landroid/app/RemoteInput;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 558
    aget-object v3, p0, v2

    invoke-static {v0}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v3

    aput-object v3, v1, v2

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 560
    .end local v2    # "i":I
    return-object v1
.end method


# virtual methods
.method public abstract getAllowFreeFormInput()Z
.end method

.method public abstract getAllowedDataTypes()Ljava/util/Set;
.end method

.method public abstract getChoices()[Ljava/lang/CharSequence;
.end method

.method public abstract getEditChoicesBeforeSending()I
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getResultKey()Ljava/lang/String;
.end method
