.class public abstract Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeImpl30"
.end annotation


# direct methods
.method public static toPlatformType(I)I
    .locals 3
    .param p0, "typeMask"    # I

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 2070
    and-int v2, p0, v1

    if-eqz v2, :cond_0

    .line 2071
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 2094
    :sswitch_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline7;->m()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_1

    .line 2091
    :sswitch_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline6;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2092
    goto :goto_1

    .line 2088
    :sswitch_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline5;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2089
    goto :goto_1

    .line 2085
    :sswitch_3
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline4;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2086
    goto :goto_1

    .line 2082
    :sswitch_4
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline3;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2083
    goto :goto_1

    .line 2079
    :sswitch_5
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline2;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2080
    goto :goto_1

    .line 2076
    :sswitch_6
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2077
    goto :goto_1

    .line 2073
    :sswitch_7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v2

    or-int/2addr v0, v2

    .line 2074
    nop

    .line 2069
    :cond_0
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2099
    .end local v1    # "i":I
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
