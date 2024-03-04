.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchPatternCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum CONTAINS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum EXACT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

.field public static final enum SUFFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->EXACT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v4, "PREFIX"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v6, "SUFFIX"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->SUFFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v8, "SAFE_REGEX"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v10, "CONTAINS"

    const/4 v11, 0x4

    const/4 v12, 0x7

    invoke-direct {v8, v10, v11, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->CONTAINS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const-string v12, "MATCHPATTERN_NOT_SET"

    invoke-direct {v10, v12, v9, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    const/4 v12, 0x6

    new-array v12, v12, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v11

    aput-object v10, v12, v9

    .line 7
    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->CONTAINS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->SUFFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->EXACT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->MATCHPATTERN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$MatchPatternCase;->value:I

    return v0
.end method
