.class public abstract Landroidx/core/app/NotificationCompatBuilder$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api26Impl"
.end annotation


# direct methods
.method public static createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelId"    # Ljava/lang/String;

    .line 716
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setBadgeIconType(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "icon"    # I

    .line 732
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setColorized(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "colorize"    # Z

    .line 727
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "groupAlertBehavior"    # I

    .line 722
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setSettingsText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 738
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setShortcutId(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 743
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setTimeoutAfter(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "durationMs"    # J

    .line 748
    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method
