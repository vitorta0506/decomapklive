.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket$ProtoAdapter_DailySessionBucket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EIGHT_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum FIVE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum FOUR_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum NINE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum NO_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum ONE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum SEVEN_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum SIX_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum TEN_OR_MORE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum THREE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final enum TWO_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v1, "NO_SESSION_BUCKET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NO_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v3, "ONE_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->ONE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v5, "TWO_SESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TWO_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v7, "THREE_SESSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->THREE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 5
    new-instance v7, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v9, "FOUR_SESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FOUR_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 6
    new-instance v9, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v11, "FIVE_SESSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FIVE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 7
    new-instance v11, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v13, "SIX_SESSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SIX_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 8
    new-instance v13, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v15, "SEVEN_SESSION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SEVEN_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 9
    new-instance v15, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v14, "EIGHT_SESSION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->EIGHT_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 10
    new-instance v14, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v12, "NINE_SESSION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NINE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 11
    new-instance v12, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const-string v10, "TEN_OR_MORE_SESSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TEN_OR_MORE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 13
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket$ProtoAdapter_DailySessionBucket;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket$ProtoAdapter_DailySessionBucket;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TEN_OR_MORE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NINE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->EIGHT_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SEVEN_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SIX_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FIVE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FOUR_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->THREE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TWO_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->ONE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NO_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->value:I

    return v0
.end method
