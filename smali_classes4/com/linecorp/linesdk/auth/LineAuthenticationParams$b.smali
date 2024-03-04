.class public final Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field private d:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->c:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object p0
.end method

.method static synthetic d(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->d:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;Lcom/linecorp/linesdk/auth/LineAuthenticationParams$a;)V

    return-object v0
.end method

.method public f(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;)",
            "Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->a:Ljava/util/List;

    return-object p0
.end method
