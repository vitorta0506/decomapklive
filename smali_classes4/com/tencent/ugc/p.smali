.class final synthetic Lcom/tencent/ugc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/TXVideoEditer;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/p;->a:Lcom/tencent/ugc/TXVideoEditer;

    iput p2, p0, Lcom/tencent/ugc/p;->b:I

    return-void
.end method

.method public static a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/p;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/p;-><init>(Lcom/tencent/ugc/TXVideoEditer;I)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/p;->a:Lcom/tencent/ugc/TXVideoEditer;

    iget v1, p0, Lcom/tencent/ugc/p;->b:I

    invoke-static {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->lambda$setRenderRotation$22(Lcom/tencent/ugc/TXVideoEditer;I)V

    return-void
.end method