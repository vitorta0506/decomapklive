.class final synthetic Lcom/tencent/ugc/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/TXVideoJoiner;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/ce;->a:Lcom/tencent/ugc/TXVideoJoiner;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/ce;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/ce;-><init>(Lcom/tencent/ugc/TXVideoJoiner;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/ce;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoJoiner;->lambda$resumePlay$5(Lcom/tencent/ugc/TXVideoJoiner;)V

    return-void
.end method
