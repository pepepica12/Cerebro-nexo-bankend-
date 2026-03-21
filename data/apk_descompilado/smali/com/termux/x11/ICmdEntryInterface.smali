.class public interface abstract Lcom/termux/x11/ICmdEntryInterface;
.super Ljava/lang/Object;
.source "ICmdEntryInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/ICmdEntryInterface$_Parcel;,
        Lcom/termux/x11/ICmdEntryInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLogcatOutput()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getXConnection()Landroid/os/ParcelFileDescriptor;
.end method
