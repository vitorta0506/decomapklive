.class public final enum Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

.field public static final enum GENERIC_ERROR:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

.field public static final enum SNAPCHAT_CANNOT_SHARE_CONTENT:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

.field public static final enum SNAPCHAT_NOT_INSTALLED:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    const-string v1, "GENERIC_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->GENERIC_ERROR:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    const-string v4, "SNAPCHAT_NOT_INSTALLED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->SNAPCHAT_NOT_INSTALLED:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    .line 3
    new-instance v4, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    const-string v6, "SNAPCHAT_CANNOT_SHARE_CONTENT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->SNAPCHAT_CANNOT_SHARE_CONTENT:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    new-array v6, v7, [Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->$VALUES:[Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->$VALUES:[Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    return-object v0
.end method
