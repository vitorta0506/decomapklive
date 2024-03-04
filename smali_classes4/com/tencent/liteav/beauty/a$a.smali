.class final Lcom/tencent/liteav/beauty/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/beauty/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tencent/liteav/beauty/b/l$a;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/beauty/b/l$a;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/beauty/a$a;->a:Lcom/tencent/liteav/beauty/b/l$a;

    .line 4
    iput p2, p0, Lcom/tencent/liteav/beauty/a$a;->b:I

    .line 5
    iput-object p3, p0, Lcom/tencent/liteav/beauty/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/beauty/b/l$a;ILjava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/beauty/a$a;-><init>(Lcom/tencent/liteav/beauty/b/l$a;ILjava/lang/String;)V

    return-void
.end method
