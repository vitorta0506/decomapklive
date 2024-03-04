.class public abstract Loh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loh/a$b;,
        Loh/a$c;
    }
.end annotation


# static fields
.field private static final a:Loh/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loh/a$b;-><init>(Loh/a$a;)V

    sput-object v0, Loh/a;->a:Loh/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lmh/j;Ljava/lang/Object;Loh/a$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lmh/j;",
            "TC;",
            "Loh/a$c<",
            "TC;>;)V"
        }
    .end annotation
.end method
