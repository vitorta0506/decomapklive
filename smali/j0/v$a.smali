.class public Lj0/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lj0/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj0/v$a;

    invoke-direct {v0}, Lj0/v$a;-><init>()V

    sput-object v0, Lj0/v$a;->a:Lj0/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lj0/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj0/v$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lj0/v$a;->a:Lj0/v$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lj0/r;)Lj0/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/r;",
            ")",
            "Lj0/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lj0/v;->c()Lj0/v;

    move-result-object p1

    return-object p1
.end method
