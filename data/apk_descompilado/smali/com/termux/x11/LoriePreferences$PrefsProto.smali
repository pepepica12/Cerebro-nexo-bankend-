.class public abstract Lcom/termux/x11/LoriePreferences$PrefsProto;
.super Landroidx/preference/PreferenceDataStore;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    }
.end annotation


# static fields
.field public static storeSecondaryDisplayPreferencesSeparately:Z


# instance fields
.field public builtInDisplayPreferences:Landroid/content/SharedPreferences;

.field public ctx:Landroid/content/Context;

.field public preferences:Landroid/content/SharedPreferences;

.field public secondaryDisplayPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 836
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 843
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 844
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    .line 845
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    .line 846
    const-string v0, "secondary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->secondaryDisplayPreferences:Landroid/content/SharedPreferences;

    .line 847
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    .line 848
    return-void
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # Z

    .line 864
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # I

    .line 875
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # Ljava/lang/String;

    .line 873
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 874
    .local p2, "ds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .line 857
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 859
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 862
    :goto_0
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # I

    .line 870
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 868
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 869
    .local p2, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public recheckStoringSecondaryDisplayPreferences()V
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    const-string v1, "storeSecondaryDisplayPreferencesSeparately"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    .line 852
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 853
    .local v2, "isExternalDisplay":Z
    :cond_0
    sget-boolean v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->secondaryDisplayPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    .line 854
    return-void
.end method
