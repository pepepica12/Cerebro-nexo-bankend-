.class public abstract Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api30Impl"
.end annotation


# direct methods
.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 4
    .param p0, "compatMetadata"    # Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 8861
    if-nez p0, :cond_0

    .line 8862
    const/4 v0, 0x0

    return-object v0

    .line 8865
    :cond_0
    const/4 v0, 0x0

    .line 8866
    .local v0, "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8867
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 8868
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    .end local v0    # "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    .local v1, "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    goto :goto_0

    .line 8870
    .end local v1    # "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    .restart local v0    # "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    :cond_1
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 8872
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    .line 8874
    .end local v0    # "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    .restart local v1    # "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    :goto_0
    nop

    .line 8875
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 8876
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 8877
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 8879
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8880
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 8883
    :cond_2
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8884
    nop

    .line 8885
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    .line 8884
    invoke-virtual {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 8888
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    return-object v0
.end method
