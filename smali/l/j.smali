.class public Ll/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li/a;

.field private final b:Li/b;

.field private final c:Li/b;

.field private final d:Li/b;

.field private final e:Li/b;


# direct methods
.method constructor <init>(Li/a;Li/b;Li/b;Li/b;Li/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/j;->a:Li/a;

    .line 3
    iput-object p2, p0, Ll/j;->b:Li/b;

    .line 4
    iput-object p3, p0, Ll/j;->c:Li/b;

    .line 5
    iput-object p4, p0, Ll/j;->d:Li/b;

    .line 6
    iput-object p5, p0, Ll/j;->e:Li/b;

    return-void
.end method


# virtual methods
.method public a()Li/a;
    .locals 1

    iget-object v0, p0, Ll/j;->a:Li/a;

    return-object v0
.end method

.method public b()Li/b;
    .locals 1

    iget-object v0, p0, Ll/j;->c:Li/b;

    return-object v0
.end method

.method public c()Li/b;
    .locals 1

    iget-object v0, p0, Ll/j;->d:Li/b;

    return-object v0
.end method

.method public d()Li/b;
    .locals 1

    iget-object v0, p0, Ll/j;->b:Li/b;

    return-object v0
.end method

.method public e()Li/b;
    .locals 1

    iget-object v0, p0, Ll/j;->e:Li/b;

    return-object v0
.end method
