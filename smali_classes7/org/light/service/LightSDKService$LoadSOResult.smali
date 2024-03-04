.class public final enum Lorg/light/service/LightSDKService$LoadSOResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/service/LightSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadSOResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/service/LightSDKService$LoadSOResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/service/LightSDKService$LoadSOResult;

.field public static final enum LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

.field public static final enum LoadSuccess:Lorg/light/service/LightSDKService$LoadSOResult;

.field public static final enum NotNeedToLoad:Lorg/light/service/LightSDKService$LoadSOResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/service/LightSDKService$LoadSOResult;

    const-string v1, "LoadSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/service/LightSDKService$LoadSOResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadSuccess:Lorg/light/service/LightSDKService$LoadSOResult;

    .line 2
    new-instance v1, Lorg/light/service/LightSDKService$LoadSOResult;

    const-string v3, "LoadFailed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/service/LightSDKService$LoadSOResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    .line 3
    new-instance v3, Lorg/light/service/LightSDKService$LoadSOResult;

    const-string v5, "NotNeedToLoad"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/light/service/LightSDKService$LoadSOResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/light/service/LightSDKService$LoadSOResult;->NotNeedToLoad:Lorg/light/service/LightSDKService$LoadSOResult;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/service/LightSDKService$LoadSOResult;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/service/LightSDKService$LoadSOResult;->$VALUES:[Lorg/light/service/LightSDKService$LoadSOResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/service/LightSDKService$LoadSOResult;
    .locals 1

    const-class v0, Lorg/light/service/LightSDKService$LoadSOResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/service/LightSDKService$LoadSOResult;

    return-object p0
.end method

.method public static values()[Lorg/light/service/LightSDKService$LoadSOResult;
    .locals 1

    sget-object v0, Lorg/light/service/LightSDKService$LoadSOResult;->$VALUES:[Lorg/light/service/LightSDKService$LoadSOResult;

    invoke-virtual {v0}, [Lorg/light/service/LightSDKService$LoadSOResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/service/LightSDKService$LoadSOResult;

    return-object v0
.end method
