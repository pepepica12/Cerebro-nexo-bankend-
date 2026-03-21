.class public abstract Landroidx/core/app/NotificationCompatBuilder$Api21Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api21Impl"
.end annotation


# direct methods
.method public static addPerson(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "uri"    # Ljava/lang/String;

    .line 608
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setCategory(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "category"    # Ljava/lang/String;

    .line 613
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setColor(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "argb"    # I

    .line 618
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setPublicVersion(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "n"    # Landroid/app/Notification;

    .line 628
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setSound(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Ljava/lang/Object;

    .line 634
    move-object v0, p2

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setVisibility(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "visibility"    # I

    .line 623
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method
