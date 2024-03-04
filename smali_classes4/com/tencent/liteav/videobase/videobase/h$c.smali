.class public final enum Lcom/tencent/liteav/videobase/videobase/h$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/videobase/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/videobase/h$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum b:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum c:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum d:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum e:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum f:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum g:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum h:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum i:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum j:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum k:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum l:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum m:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum n:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum o:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum p:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum q:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum r:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum s:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum t:Lcom/tencent/liteav/videobase/videobase/h$c;

.field private static final synthetic u:[Lcom/tencent/liteav/videobase/videobase/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v1, "WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->a:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 2
    new-instance v1, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v3, "WARNING_VIDEO_ENCODE_START_FAILED_INSUFFICIENT_RESOURCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 3
    new-instance v3, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v5, "WARNING_VIDEO_ENCODE_START_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->c:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 4
    new-instance v5, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v7, "WARNING_VIDEO_ENCODE_SWAP_BUFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/liteav/videobase/videobase/h$c;->d:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 5
    new-instance v7, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v9, "WARNING_VIDEO_RENDER_EGL_CORE_CREATE_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/liteav/videobase/videobase/h$c;->e:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 6
    new-instance v9, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v11, "WARNING_VIDEO_RENDER_EGL_CORE_DESTROY_FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/liteav/videobase/videobase/h$c;->f:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 7
    new-instance v11, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v13, "WARNING_VIDEO_RENDER_SWAP_BUFFER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/liteav/videobase/videobase/h$c;->g:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 8
    new-instance v13, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tencent/liteav/videobase/videobase/h$c;->h:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 9
    new-instance v15, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v14, "WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_ARGUMENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/tencent/liteav/videobase/videobase/h$c;->i:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 10
    new-instance v14, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v12, "WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_STATE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/tencent/liteav/videobase/videobase/h$c;->j:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 11
    new-instance v12, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v10, "WARNING_VIDEO_DECODE_START_FAILED_INSUFFICIENT_RESOURCE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/tencent/liteav/videobase/videobase/h$c;->k:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 12
    new-instance v10, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v8, "WARNING_VIDEO_DECODE_START_FAILED_OUT_OF_MEMORY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/tencent/liteav/videobase/videobase/h$c;->l:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 13
    new-instance v8, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v6, "WARNING_VIDEO_DECODE_START_FAILED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 14
    new-instance v6, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "WARNING_VIDEO_DECODE_RESTART_WHEN_DECODE_ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 15
    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v2, "WARNING_VIDEO_DECODE_ERROR_NOT_SUPPORT_PIXEL_FORMAT_TYPE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->o:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 16
    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v6, "WARNING_VIDEO_DECODE_FATAL_ERROR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->p:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 17
    new-instance v6, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "WARNING_VIDEO_DECODE_CACHE_EXCEEDED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tencent/liteav/videobase/videobase/h$c;->q:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 18
    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v2, "WARNING_VIDEO_DECODE_ABNORMAL"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->r:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 19
    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v6, "WARNING_VIDEO_DECODE_EGL_CORE_DESTROY_FAILED"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->s:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 20
    new-instance v6, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "WARNING_VIDEO_DECODE_HARDWARE_ERROR"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tencent/liteav/videobase/videobase/h$c;->t:Lcom/tencent/liteav/videobase/videobase/h$c;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/tencent/liteav/videobase/videobase/h$c;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 21
    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->u:[Lcom/tencent/liteav/videobase/videobase/h$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/videobase/h$c;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/videobase/h$c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/videobase/h$c;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->u:[Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/videobase/h$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/videobase/h$c;

    return-object v0
.end method
