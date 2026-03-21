.class public Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;
.super Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntPreference"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$PrefsProto;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 764
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    .line 765
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 766
    return-void
.end method


# virtual methods
.method public get()I
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->defValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
