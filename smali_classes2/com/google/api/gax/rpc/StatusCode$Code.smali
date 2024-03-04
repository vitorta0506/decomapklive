.class public final enum Lcom/google/api/gax/rpc/StatusCode$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/gax/rpc/StatusCode$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum ABORTED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum ALREADY_EXISTS:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum CANCELLED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum DATA_LOSS:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum FAILED_PRECONDITION:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum INTERNAL:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum INVALID_ARGUMENT:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum NOT_FOUND:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum OK:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum OUT_OF_RANGE:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum PERMISSION_DENIED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum UNAUTHENTICATED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum UNAVAILABLE:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum UNIMPLEMENTED:Lcom/google/api/gax/rpc/StatusCode$Code;

.field public static final enum UNKNOWN:Lcom/google/api/gax/rpc/StatusCode$Code;


# instance fields
.field private httpStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/gax/rpc/StatusCode$Code;->OK:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 2
    new-instance v1, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    const/16 v5, 0x1f3

    invoke-direct {v1, v3, v4, v5}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/gax/rpc/StatusCode$Code;->CANCELLED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 3
    new-instance v3, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const/16 v7, 0x1f4

    invoke-direct {v3, v5, v6, v7}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/gax/rpc/StatusCode$Code;->UNKNOWN:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 4
    new-instance v5, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v8, "INVALID_ARGUMENT"

    const/4 v9, 0x3

    const/16 v10, 0x190

    invoke-direct {v5, v8, v9, v10}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/gax/rpc/StatusCode$Code;->INVALID_ARGUMENT:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 5
    new-instance v8, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v11, "DEADLINE_EXCEEDED"

    const/4 v12, 0x4

    const/16 v13, 0x1f8

    invoke-direct {v8, v11, v12, v13}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/api/gax/rpc/StatusCode$Code;->DEADLINE_EXCEEDED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 6
    new-instance v11, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v13, "NOT_FOUND"

    const/4 v14, 0x5

    const/16 v15, 0x194

    invoke-direct {v11, v13, v14, v15}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/api/gax/rpc/StatusCode$Code;->NOT_FOUND:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 7
    new-instance v13, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v15, "ALREADY_EXISTS"

    const/4 v14, 0x6

    const/16 v12, 0x199

    invoke-direct {v13, v15, v14, v12}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/api/gax/rpc/StatusCode$Code;->ALREADY_EXISTS:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 8
    new-instance v15, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v14, "PERMISSION_DENIED"

    const/4 v9, 0x7

    const/16 v6, 0x193

    invoke-direct {v15, v14, v9, v6}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/api/gax/rpc/StatusCode$Code;->PERMISSION_DENIED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 9
    new-instance v6, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v9, 0x8

    const/16 v4, 0x1ad

    invoke-direct {v6, v14, v9, v4}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/api/gax/rpc/StatusCode$Code;->RESOURCE_EXHAUSTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 10
    new-instance v4, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v14, "FAILED_PRECONDITION"

    const/16 v9, 0x9

    invoke-direct {v4, v14, v9, v10}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/gax/rpc/StatusCode$Code;->FAILED_PRECONDITION:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 11
    new-instance v14, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v9, "ABORTED"

    const/16 v2, 0xa

    invoke-direct {v14, v9, v2, v12}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/api/gax/rpc/StatusCode$Code;->ABORTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 12
    new-instance v9, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v12, "OUT_OF_RANGE"

    const/16 v2, 0xb

    invoke-direct {v9, v12, v2, v10}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/api/gax/rpc/StatusCode$Code;->OUT_OF_RANGE:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 13
    new-instance v10, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v12, "UNIMPLEMENTED"

    const/16 v2, 0xc

    const/16 v7, 0x1f5

    invoke-direct {v10, v12, v2, v7}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/api/gax/rpc/StatusCode$Code;->UNIMPLEMENTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 14
    new-instance v7, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v12, "INTERNAL"

    const/16 v2, 0xd

    move-object/from16 v16, v10

    const/16 v10, 0x1f4

    invoke-direct {v7, v12, v2, v10}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/api/gax/rpc/StatusCode$Code;->INTERNAL:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 15
    new-instance v12, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v2, "UNAVAILABLE"

    const/16 v10, 0xe

    move-object/from16 v17, v7

    const/16 v7, 0x1f7

    invoke-direct {v12, v2, v10, v7}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAVAILABLE:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 16
    new-instance v2, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v7, "DATA_LOSS"

    const/16 v10, 0xf

    move-object/from16 v18, v12

    const/16 v12, 0x1f4

    invoke-direct {v2, v7, v10, v12}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->DATA_LOSS:Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 17
    new-instance v7, Lcom/google/api/gax/rpc/StatusCode$Code;

    const-string v12, "UNAUTHENTICATED"

    const/16 v10, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x191

    invoke-direct {v7, v12, v10, v2}, Lcom/google/api/gax/rpc/StatusCode$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAUTHENTICATED:Lcom/google/api/gax/rpc/StatusCode$Code;

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/google/api/gax/rpc/StatusCode$Code;

    const/4 v12, 0x0

    aput-object v0, v2, v12

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v6, v2, v0

    const/16 v0, 0x9

    aput-object v4, v2, v0

    const/16 v0, 0xa

    aput-object v14, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v7, v2, v10

    .line 18
    sput-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->$VALUES:[Lcom/google/api/gax/rpc/StatusCode$Code;

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
    iput p3, p0, Lcom/google/api/gax/rpc/StatusCode$Code;->httpStatusCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gax/rpc/StatusCode$Code;
    .locals 1

    const-class v0, Lcom/google/api/gax/rpc/StatusCode$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0
.end method

.method public static values()[Lcom/google/api/gax/rpc/StatusCode$Code;
    .locals 1

    sget-object v0, Lcom/google/api/gax/rpc/StatusCode$Code;->$VALUES:[Lcom/google/api/gax/rpc/StatusCode$Code;

    invoke-virtual {v0}, [Lcom/google/api/gax/rpc/StatusCode$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object v0
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/api/gax/rpc/StatusCode$Code;->httpStatusCode:I

    return v0
.end method
