.class public Lcom/snapchat/kit/sdk/core/models/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/kit/sdk/core/models/c;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/snapchat/kit/sdk/core/models/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/b;->a:Lcom/snapchat/kit/sdk/core/models/c;

    .line 3
    iput p2, p0, Lcom/snapchat/kit/sdk/core/models/b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/models/b;->b:I

    return v0
.end method

.method public b()Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
    .locals 1

    .line 1
    iget v0, p0, Lcom/snapchat/kit/sdk/core/models/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TEN_OR_MORE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 3
    :pswitch_0
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NINE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->EIGHT_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 5
    :pswitch_2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SEVEN_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 6
    :pswitch_3
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->SIX_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 7
    :pswitch_4
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FIVE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 8
    :pswitch_5
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->FOUR_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 9
    :pswitch_6
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->THREE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 10
    :pswitch_7
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->TWO_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    .line 11
    :pswitch_8
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->ONE_SESSION:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public c()V
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/models/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/kit/sdk/core/models/b;->b:I

    return-void
.end method
