.class final synthetic Lcom/tencent/ugc/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/UGCThumbnailGenerator;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/fn;->a:Lcom/tencent/ugc/UGCThumbnailGenerator;

    iput-wide p2, p0, Lcom/tencent/ugc/fn;->b:J

    iput-wide p4, p0, Lcom/tencent/ugc/fn;->c:J

    return-void
.end method

.method public static a(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Lcom/tencent/ugc/fn;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/fn;-><init>(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)V

    return-object v6
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/ugc/fn;->a:Lcom/tencent/ugc/UGCThumbnailGenerator;

    iget-wide v1, p0, Lcom/tencent/ugc/fn;->b:J

    iget-wide v3, p0, Lcom/tencent/ugc/fn;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/UGCThumbnailGenerator;->lambda$setVideoSourceRange$2(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)V

    return-void
.end method
