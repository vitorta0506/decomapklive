.class final Lorg/apache/http/conn/ssl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Value"

    .line 2
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/conn/ssl/h;->a:Ljava/lang/String;

    const-string p1, "Type"

    .line 3
    invoke-static {p2, p1}, Lvi/a;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/http/conn/ssl/h;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/apache/http/conn/ssl/h;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/ssl/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/ssl/h;->a:Ljava/lang/String;

    return-object v0
.end method
