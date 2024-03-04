.class public Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo0/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lo0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/g;

    invoke-direct {v0}, Lo0/g;-><init>()V

    sput-object v0, Lo0/g;->a:Lo0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lo0/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lo0/g;->a:Lo0/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
