.class final Lcom/tencent/tmediacodec/b/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmediacodec/b/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/tmediacodec/b/e;


# direct methods
.method constructor <init>(Lcom/tencent/tmediacodec/b/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e$2;->b:Lcom/tencent/tmediacodec/b/e;

    iput-object p2, p0, Lcom/tencent/tmediacodec/b/e$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$2;->b:Lcom/tencent/tmediacodec/b/e;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(Lcom/tencent/tmediacodec/b/e;Ljava/util/List;)V

    return-void
.end method
