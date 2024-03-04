.class public Lr5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/a;


# static fields
.field private static final a:Lr5/a;

.field private static final b:Lr5/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr5/c;

    invoke-direct {v0}, Lr5/c;-><init>()V

    sput-object v0, Lr5/c;->a:Lr5/a;

    .line 2
    new-instance v0, Lr5/c$a;

    invoke-direct {v0}, Lr5/c$a;-><init>()V

    sput-object v0, Lr5/c;->b:Lr5/a$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lr5/a;
    .locals 1

    sget-object v0, Lr5/c;->a:Lr5/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Lr5/a$a;
    .locals 1

    sget-object v0, Lr5/c;->b:Lr5/a$a;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
