.class final Ln1/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Ln1/l;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln1/a$e;

.field private static final b:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln1/a$e;

    invoke-direct {v0}, Ln1/a$e;-><init>()V

    sput-object v0, Ln1/a$e;->a:Ln1/a$e;

    const-string v0, "clientMetrics"

    .line 2
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Ln1/a$e;->b:Ld6/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ln1/l;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Ln1/a$e;->b(Ln1/l;Ld6/d;)V

    return-void
.end method

.method public b(Ln1/l;Ld6/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ln1/a$e;->b:Ld6/b;

    invoke-virtual {p1}, Ln1/l;->b()Lr1/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
