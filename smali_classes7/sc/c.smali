.class public final synthetic Lsc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc/d$a;


# instance fields
.field public final synthetic a:Lsc/d;

.field public final synthetic b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;


# direct methods
.method public synthetic constructor <init>(Lsc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc/c;->a:Lsc/d;

    iput-object p2, p0, Lsc/c;->b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    return-void
.end method


# virtual methods
.method public final a(Lvc/d;)Lqc/c;
    .locals 2

    iget-object v0, p0, Lsc/c;->a:Lsc/d;

    iget-object v1, p0, Lsc/c;->b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    invoke-static {v0, v1, p1}, Lsc/d;->e(Lsc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lvc/d;)Lqc/c;

    move-result-object p1

    return-object p1
.end method
