.class Lcom/previewlibrary/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/previewlibrary/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static a:Lcom/previewlibrary/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/previewlibrary/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/previewlibrary/a;-><init>(Lcom/previewlibrary/a$a;)V

    sput-object v0, Lcom/previewlibrary/a$b;->a:Lcom/previewlibrary/a;

    return-void
.end method
