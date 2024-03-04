.class public Lorg/light/bean/LightAgentBundleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightAgentBundleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public agentType:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public subAgentFolderConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subAgentLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightAgentBundleInfo$1;

    invoke-direct {v0}, Lorg/light/bean/LightAgentBundleInfo$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightAgentBundleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->level:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentFolderConfigs:Ljava/util/Map;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->level:Ljava/lang/String;

    .line 4
    check-cast p3, Ljava/util/Map;

    iput-object p3, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentFolderConfigs:Ljava/util/Map;

    .line 5
    check-cast p4, Ljava/util/Map;

    iput-object p4, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public containsAgentType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAgentLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public notValid()Z
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAgentLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->level:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->agentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->level:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentFolderConfigs:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4
    iget-object p2, p0, Lorg/light/bean/LightAgentBundleInfo;->subAgentLevels:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
