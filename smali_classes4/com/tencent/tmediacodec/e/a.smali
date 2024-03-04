.class public final Lcom/tencent/tmediacodec/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmediacodec/e/a;->a:Ljava/util/Map;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/tencent/tmediacodec/e/a;->f:Ljava/lang/String;

    .line 4
    iput-boolean p1, p0, Lcom/tencent/tmediacodec/e/a;->g:Z

    return-void
.end method
