.class final synthetic Lcom/tencent/ugc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/TXVideoEditer;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/l;->a:Lcom/tencent/ugc/TXVideoEditer;

    iput-object p2, p0, Lcom/tencent/ugc/l;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/l;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/l;-><init>(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/l;->a:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/l;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->lambda$setSubtitleList$19(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V

    return-void
.end method
