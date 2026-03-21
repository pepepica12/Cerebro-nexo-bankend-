.class public abstract Landroidx/core/app/NotificationCompatBuilder$Api23Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api23Impl"
.end annotation


# direct methods
.method public static createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 650
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static setLargeIcon(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 661
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setSmallIcon(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "icon"    # Ljava/lang/Object;

    .line 656
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method
