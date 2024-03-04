.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration$ProtoAdapter_BitmojiKitSearchBarConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SEARCH_BAR_HIDDEN:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

.field public static final enum SEARCH_BAR_VISIBLE:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    const-string v1, "SEARCH_BAR_VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->SEARCH_BAR_VISIBLE:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    const-string v3, "SEARCH_BAR_HIDDEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->SEARCH_BAR_HIDDEN:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 4
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration$ProtoAdapter_BitmojiKitSearchBarConfiguration;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration$ProtoAdapter_BitmojiKitSearchBarConfiguration;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->SEARCH_BAR_HIDDEN:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->SEARCH_BAR_VISIBLE:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->value:I

    return v0
.end method
