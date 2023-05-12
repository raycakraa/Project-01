

<?php $__env->startSection('container'); ?>
  
<div class="row justify mt-4">
    <div class="col">
        <main class="form-signin w-100 m-auto">
            <form class="mb-4" action="/login" method="post">
              <?php echo csrf_field(); ?>
              <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
          
              <?php if(session()->has('success')): ?>
              
              <div class="alert alert-success alert-dismissable fade show text-center" role="alert">
                <?php echo e(session('success')); ?>

              </div>
    
              <?php endif; ?>


              <?php if(session()->has('loginError')): ?>
              
              <div class="alert alert-danger alert-dismissable fade show text-center" role="alert">
                <?php echo e(session('loginError')); ?>

              </div>
    
              <?php endif; ?>


              <div class="form-floating">
                <input type="email" name="email" class="form-control" <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> id="email" placeholder="name@example.com" autofocus required value="<?php echo e(old('email')); ?>">
                <label for="email">Email address</label>

                <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <div class="invalid-feedback">
                      <?php echo e($message); ?>

                    </div>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                <label for="password">Password</label>
              </div>
          
              <div class="checkbox mb-3">
        
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        
            </form>
            <small class="d-block text-center"> Don't have an account yet? <a href="/register"> Register now! </a> </small>
        </main>
    </div>
</div>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\App\project-01\resources\views/login/index.blade.php ENDPATH**/ ?>