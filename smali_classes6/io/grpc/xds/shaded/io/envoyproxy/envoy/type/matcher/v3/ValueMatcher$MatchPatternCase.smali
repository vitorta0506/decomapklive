.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchPatternCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum BOOL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum DOUBLE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum LIST_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum NULL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

.field public static final enum STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v1, "NULL_MATCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->NULL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v4, "DOUBLE_MATCH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->DOUBLE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v6, "STRING_MATCH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v8, "BOOL_MATCH"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->BOOL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v10, "PRESENT_MATCH"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v12, "LIST_MATCH"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->LIST_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const-string v14, "MATCHPATTERN_NOT_SET"

    invoke-direct {v12, v14, v13, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    const/4 v14, 0x7

    new-array v14, v14, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 8
    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->LIST_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->BOOL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->DOUBLE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->NULL_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/ValueMatcher$MatchPatternCase;->value:I

    return v0
.end method
