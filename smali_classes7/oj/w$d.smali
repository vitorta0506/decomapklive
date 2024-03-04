.class Loj/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loj/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Enumeration;

.field final synthetic b:Loj/w;


# direct methods
.method constructor <init>(Loj/w;Ljava/util/Enumeration;)V
    .locals 0

    iput-object p1, p0, Loj/w$d;->b:Loj/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Loj/w$d;->a:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Loj/w$d;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Loj/w$d;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/w$b;->y(Ljava/lang/Object;)Loj/w$b;

    move-result-object v0

    return-object v0
.end method
