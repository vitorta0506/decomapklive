.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView$ProtoAdapter_BitmojiKitStickerPickerView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CREATE_AVATAR:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final enum ERROR_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final enum LINK_ACCOUNT:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final enum NOT_AUTHORIZED:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final enum STICKER_PICKER:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final enum UNKNOWN_BITMOJI_KIT_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v1, "UNKNOWN_BITMOJI_KIT_PICKER_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->UNKNOWN_BITMOJI_KIT_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v3, "STICKER_PICKER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->STICKER_PICKER:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v5, "CREATE_AVATAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->CREATE_AVATAR:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v7, "LINK_ACCOUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->LINK_ACCOUNT:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 5
    new-instance v7, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v9, "NOT_AUTHORIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->NOT_AUTHORIZED:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 6
    new-instance v9, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const-string v11, "ERROR_VIEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ERROR_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 8
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView$ProtoAdapter_BitmojiKitStickerPickerView;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView$ProtoAdapter_BitmojiKitStickerPickerView;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ERROR_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->NOT_AUTHORIZED:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->LINK_ACCOUNT:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->CREATE_AVATAR:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->STICKER_PICKER:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->UNKNOWN_BITMOJI_KIT_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->value:I

    return v0
.end method