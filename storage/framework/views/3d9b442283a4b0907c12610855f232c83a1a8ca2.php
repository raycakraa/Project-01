


<?php $__env->startSection('container'); ?>
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col md-8">

                <h1 class="mb-3"> <?php echo e($post->title); ?></h1>

                <p> By <?php echo e($post->user->name); ?> in <?php echo e($post->category->name); ?></p>

                <img src="https://source.unsplash.com/1200x400/?<?php echo e($post->category->name); ?>" class="img-fluid" alt="<?php echo e($post->category->name); ?>">

                <article class=" my-3 fs-5">
                   <p class="text-justify"> <?php echo $post->body; ?> </p>
                </article> 

                <a href="/blog">Back to All Posts</a>

            </div>
        </div>
    </div>

    
     
    
    
     
    
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\App\project-01\resources\views/post.blade.php ENDPATH**/ ?>