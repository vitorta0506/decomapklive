.class final synthetic Lcom/tencent/ugc/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/eb;->a:Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/eb;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/eb;-><init>(Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/eb;->a:Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;

    invoke-static {v0}, Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;->lambda$stop$1(Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;)V

    return-void
.end method
