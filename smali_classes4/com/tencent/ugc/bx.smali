.class final synthetic Lcom/tencent/ugc/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/TXVideoJoiner;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/bx;->a:Lcom/tencent/ugc/TXVideoJoiner;

    iput p2, p0, Lcom/tencent/ugc/bx;->b:I

    iput-object p3, p0, Lcom/tencent/ugc/bx;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/bx;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/ugc/bx;-><init>(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/ugc/bx;->a:Lcom/tencent/ugc/TXVideoJoiner;

    iget v1, p0, Lcom/tencent/ugc/bx;->b:I

    iget-object v2, p0, Lcom/tencent/ugc/bx;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/ugc/TXVideoJoiner;->lambda$splitJoinVideo$12(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)V

    return-void
.end method
