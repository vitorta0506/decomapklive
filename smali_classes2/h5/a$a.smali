.class Lh5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lh5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/a;

    invoke-direct {v0}, Lh5/a;-><init>()V

    sput-object v0, Lh5/a$a;->a:Lh5/a;

    return-void
.end method
