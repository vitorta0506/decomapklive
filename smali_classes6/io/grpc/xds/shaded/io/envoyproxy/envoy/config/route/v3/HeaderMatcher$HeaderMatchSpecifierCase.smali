.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderMatchSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

.field public static final enum CONTAINS_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EXACT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HEADERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

.field public static final enum PREFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

.field public static final enum RANGE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

.field public static final enum SAFE_REGEX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

.field public static final enum SUFFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v1, "EXACT_MATCH"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->EXACT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v4, "SAFE_REGEX_MATCH"

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SAFE_REGEX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v6, "RANGE_MATCH"

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-direct {v4, v6, v7, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->RANGE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v9, "PRESENT_MATCH"

    const/4 v10, 0x3

    const/4 v11, 0x7

    invoke-direct {v6, v9, v10, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 5
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v12, "PREFIX_MATCH"

    const/16 v13, 0x9

    invoke-direct {v9, v12, v3, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PREFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 6
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v14, "SUFFIX_MATCH"

    const/4 v15, 0x5

    const/16 v3, 0xa

    invoke-direct {v12, v14, v15, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SUFFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 7
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v14, "CONTAINS_MATCH"

    const/16 v15, 0xc

    invoke-direct {v3, v14, v8, v15}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->CONTAINS_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v15, "STRING_MATCH"

    const/16 v8, 0xd

    invoke-direct {v14, v15, v11, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    .line 9
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    const-string v15, "HEADERMATCHSPECIFIER_NOT_SET"

    const/16 v11, 0x8

    invoke-direct {v8, v15, v11, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->HEADERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    new-array v13, v13, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    aput-object v0, v13, v2

    aput-object v1, v13, v5

    aput-object v4, v13, v7

    aput-object v6, v13, v10

    const/4 v0, 0x4

    aput-object v9, v13, v0

    const/4 v0, 0x5

    aput-object v12, v13, v0

    const/4 v0, 0x6

    aput-object v3, v13, v0

    const/4 v0, 0x7

    aput-object v14, v13, v0

    aput-object v8, v13, v11

    .line 10
    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->CONTAINS_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SAFE_REGEX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SUFFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PREFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->RANGE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->EXACT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->HEADERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->value:I

    return v0
.end method
